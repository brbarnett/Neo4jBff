﻿using System;
using Microsoft.Practices.Unity;
using Microsoft.Practices.Unity.Configuration;
using Neo4jClient;

namespace Neo4jBff.AspNet.App_Start
{
    /// <summary>
    /// Specifies the Unity configuration for the main container.
    /// </summary>
    public class UnityConfig
    {
        #region Unity Container
        private static Lazy<IUnityContainer> container = new Lazy<IUnityContainer>(() =>
        {
            var container = new UnityContainer();
            RegisterTypes(container);
            return container;
        });

        /// <summary>
        /// Gets the configured Unity container.
        /// </summary>
        public static IUnityContainer GetConfiguredContainer()
        {
            return container.Value;
        }
        #endregion

        /// <summary>Registers the type mappings with the Unity container.</summary>
        /// <param name="container">The unity container to configure.</param>
        /// <remarks>There is no need to register concrete types such as controllers or API controllers (unless you want to 
        /// change the defaults), as Unity allows resolving a concrete type even if it was not previously registered.</remarks>
        public static void RegisterTypes(IUnityContainer container)
        {
            //container.RegisterType<GraphClient>(new HierarchicalLifetimeManager(),
            //    new InjectionConstructor(new Uri("http://localhost:7474/"), "neo4j", "Welcome1"));
            var graphClient = new GraphClient(new Uri("http://localhost:7474/db/data"), "neo4j", "Welcome1");
            graphClient.Connect();
            container.RegisterInstance<GraphClient>(graphClient);
        }
    }
}